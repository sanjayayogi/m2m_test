## Create a shell script - m2m.sh
## THIS WILL LET YOU RAPIDLY BUILD THE APP AND REBUILD IT QUICKLY WHEN YOU WANT
## IT ALSO SHOWS ALL THE STEPS THAT YOU ARE TAKING TO BUILD IT
## IT ASSUMES THAT YOU WILL USE A FOLDER m2m_m1 WHICH CONTAINS FILES THAT YOU HAVE ALREADY CREATED TO
## CREATE YOUR MODELS, CONTROLLERS, AND VIEWS TO USE active_scaffold
## IT WILL BACKUP WHAT YOU CREATE TO m2m_MOST_RECENT (WHICH WILL OVERWRITE ANY PREVIOUS VERSIONS)
## THE SCRIPT ECHOES WHAT IT IS DOING


# m2m.sh
echo mv m2m m2m_MOST_RECENT
mv m2m m2m_MOST_RECENT
echo rails m2m
rails m2m
echo cp m2m_m1/config/database.m2m_m1.yml ./m2m/config/database.yml
cp m2m_m1/config/database.m2m_m1.yml ./m2m/config/database.yml
echo cd ./m2m/
cd ./m2m/
echo rake db:drop:all
rake db:drop:all
echo rake db:create:all
rake db:create:all
echo script/generate scaffold Assignment project_id:integer programmer_id:integer
script/generate scaffold Assignment project_id:integer programmer_id:integer
echo script/generate scaffold Project project_id:integer project_name:string
script/generate scaffold Project id:integer project_name:string
echo script/generate scaffold Programmer programmer_id:integer first_name:string last_name:string
script/generate scaffold Programmer id:integer first_name:string last_name:string
echo rm db/migrate/*
rm db/migrate/*
echo cp ../m2m_m1/db/migrate/* db/migrate/
cp ../m2m_m1/db/migrate/* db/migrate/
echo rake db:migrate
rake db:migrate
echo script/plugin install git://github.com/activescaffold/active_scaffold.git
script/plugin install git://github.com/activescaffold/active_scaffold.git
echo cp ../m2m_m1/patches/_list_calculations.rhtml ./vendor/plugins/active_scaffold/frontends/default/views/_list_calculations.rhtml 
cp ../m2m_m1/patches/_list_calculations.rhtml ./vendor/plugins/active_scaffold/frontends/default/views/_list_calculations.rhtml 
echo ../m2m_m1/patches/name_option_for_datetime.rb ./vendor/plugins/active_scaffold/lib/extensions/name_option_for_datetime.rb
cp ../m2m_m1/patches/name_option_for_datetime.rb ./vendor/plugins/active_scaffold/lib/extensions/name_option_for_datetime.rb
echo cp ../m2m_m1/patches/show_column_helpers.rb vendor/plugins/active_scaffold/lib/active_scaffold/helpers/show_column_helpers.rb
cp ../m2m_m1/patches/show_column_helpers.rb vendor/plugins/active_scaffold/lib/active_scaffold/helpers/show_column_helpers.rb
echo cp ../m2m_m1/app/models/* ./app/models/
cp ../m2m_m1/app/models/* ./app/models/
echo cp ../m2m_m1/app/controllers/* ./app/controllers/
cp ../m2m_m1/app/controllers/* ./app/controllers/
echo cp  ../m2m_m1/app/views/layouts/*  ./app/views/layouts/
cp  ../m2m_m1/app/views/layouts/*  ./app/views/layouts/
echo cp  ../m2m_m1/test/fixtures/*  ./test/fixtures/
cp  ../m2m_m1/test/fixtures/*  ./test/fixtures/
echo rake db:fixtures:load
rake db:fixtures:load
echo cp ../m2m_m1/config/routes.rb ./config/
cp ../m2m_m1/config/routes.rb ./config/
echo script/server
script/server