# README

RUBY VERSION

The Ruby version I used was the 2.5.1, while the Rails version used was the 5.2.2. 

REMARKABLE GEMS 
A number of gems have been used. Among the most important there are *bootstrap*, which was used extensively to provide a minimalist look to the application.
Besides, I also used *bootstrap4-kaminari-views* and *kaminari* to make the application faster.
Moreover the *csv* gem was used to read the csv files used to seed the various scaffolds.
The application uses in a section a leaflet, which has been embedded using the *leaflet* gem. 
The security measures were implemented using the *devise* gem. 
Concerning tests, the main gem used was *rspec*.
Regarding databases, it must be remembered that the default databases of Rails and Heroku differ, as the former use SQLite3 and the latter uses PostgreSQL. Therefore, it was necessary to use *sqlite3* for the development environment and *pg gem* for the production environment.


LOCAL DEPLOYMENT

Set Up The Application

As first step, I created the application using:

* *rails new atcr* 

Prepare Files 

It was necessary to clone the application from online repository or download the compressed file and extract it to a local folder. To do that, I used the command:

* *git clone* 

Install Libraries

All the necessary gems must be installed. The command to do that is:

* *bundle install*

However, in case gems were uploaded or were restricted to a specific version, I used this command:

* *bundle update*

Creating the Main Structure

To set up the entire application, they were necessary several steps. Firstly, I created some scaffolds. Each scaffold generated a view, a model and a controller, which would have displayed the necessary material. Specifically, I created the following ones: 

* *rails generate scaffold RiskFactorCancerDeaths cause:string year:string share_deaths:decimal*

* *rails generate scaffold Sharepopulationsufferingtypescancer entity:string code:string year:string liver_cancer:decimal larynx_cancer:decimal kidney_cancer:decimal breast_cancer:decimal thyroid_cancer:decimal stomach_cancer:decimal uterine_cancer:decimal ovarian_cancer:decimal bladder_cancer:decimal prostate_cancer:decimal cervical_cancer:decimal pancreatic_cancer:decimal esophageal_cancer:decimal testicular_cancer:decimal nasopharynx_cancer:decimal colon_and_rectum_cancer:decimal non_melanoma_skin_cancer:decimal lip_and_oral_cancer:decimal brain_and_nervous_system_cancer:decimal tracheal_bronchus_and_lung_cancer:decimal gallbladder_and_biliary_tract_cancer:decimal*

* *rails generate scaffold alcoholconsumption entity:string code:string year:string consumption:decimal latitude:float longitude:float*

* *rails generate scaffold Cancerconference event:string location:string country:string latitude:float longitude:float date:date*

After those scaffolds were written, I always ran the following command to do the migrations and thus, initialize the database:

* *rails db:migrate*

Some CSV files, put in lib/assets/atcr_data were used to feed the various scaffolds. Specifically, I firstly imported the CSV files. Secondly I created some rake files using the following commands:

* *rails g task riskfactorcancerdeath*

* *rails g task sharepopulationsufferingtypescancer*

* *rails g task alcoholconsumption*

* *rails g task cancerconference*

Once these files were coded to get the data, I would run the following command to parse the scaffolds:

* *rake riskfactorcancerdeath:seed_riskfactorcancerdeath*

* *rake sharepopulationsufferingcancer:seed_sharepopulationsufferingcancer*

* *rake alcoholconsumption:seed_alcoholconsumption*

* *rake cancerconference:seed_cancerconference* 

A different approach was adopted instead to set up the shop, for various components were created over time. 

The following code was implemented: 
 
 * *rails generate scaffold Rehab name:string address:string service:text picture_url:string price:decimal*

 * *rails generate scaffold shop name:string address:string country:string service:text picture_url:string price:decimal*
 
 * *rails generate controller Store index*
 
 * *rails generate scaffold Cart*
 
 * *rails generate scaffold LineItem rehab:references cart:belongs_to*

The first one set up the items sold, while all the rest of the code was used to create the various components of the shop. 

Local Testing

Everytime I wanted to test a functionality on the local server, I would run this command: 

* *rails server -b 0.0.0.0*

Testing

In order to run the tests, every section of the app should be tested individually in the test. Specifically, one can run the following command: 

* *rails test:controllers*

* *rails test:models*

DEPLOYMENT ON HEROKU 

The application works finely on Heroku. The following steps must be followed to set it up:

1. Create an Heroku account

2. Run *heroku login* in your local terminal

3. Run *heroku git:clone -a atcr* in your local terminal

In order to deploy the changes, one should run the following commands in the local terminal:

4. *git add .*
5. *git commit -am "stuff"*
6. *git push heroku master*

To initialize the Heroku application, one should run some commands in the specific order they are reported. In particular, the order is affected by the order of the migrations: 

7.  *heroku run rails db:migrate*
8.  *heroku run rails db:seed*
9.  *heroku run riskfactorcancerdeath:seed_riskfactorcancerdeath*
10. *heroku run sharepopulationsufferingtypescancer:seed_sharepopulationsufferingtypescancer* 
11. *heroku run rake alcoholconsumption:seed_alcoholconsumption* 
12. *heroku run rake cancerconference:seed* 

If these steps are implemented properly, one can run the application by writing https://atcr.herokuapp.com/ in the URL. 

