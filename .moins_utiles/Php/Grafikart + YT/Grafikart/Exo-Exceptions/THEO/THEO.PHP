<?PHP
//////////////////////////////////////////////////

/*  

    EXCEPTIONS => cas speciaux a gerer -> renvoyer une exception qu on catch plus tard
                    ou quon laissera ds la nature qui generont des erreures plus claire

    EXCEPTIONS : CLASS

     Exception implements Throwable {
        
        - Propriétés 
        
        protected string $message ;
        
        protected int $code ;
        
        protected string $file ;
        
        protected int $line ;
 
 
        - Méthodes 
        public __construct ( string $message = "" , int $code = 0 , Throwable|null $previous = null )

        
        - message

            Le message de l'exception
        - code

            Le code de l'exception
        - file

            Le nom du fichier dans lequel l'exception a été créée
        - line

            La ligne où l'exception a été créée


        *** quand on veut retourner une exception 
        *** on remplace return par thrwow           // obligatoire !!!
        *** 
        *** throw new exceptions($errors);

        ***
            try
            {
                // du code qui peut renvoyer une exceptions
            }
            catch(Exception $e)             // le type d exceptions que l ont veut capturer
            {
                die($e->getMessage())       // renvoi le contenu du message d erreur -> methode public
                return[];                   
            }


        finally{
            
            // peut utiliser
            // code a executer quoi qu il arrive 
        }
=======================================================================

        POUR LES EXECPTIONS DE TYPE PHP

        ERROR FONCTIONNE COMME UNE EXCEPTION 

         catch(Error $e)

         ====================================

         catch(Exception | Error){
             
            **code
         }

=======================================================================

creation fichier APIException.php
require dans le fichier php ou on veut utiliser l exceptions

        HTTPException 
            -> isolé les erreurs http a travers  
            --> 
                $data=curl_exec($curl);
                class HTTPException extends Exception{
                if(curl_getinfo($curl, CURLINFO_HTTP_CODE) !== 200){
                    curl_close($curl);
                    throw new HTTPEception($data);
                }
        }
        CurlExecption ->

        class APIException extends Exception{    
                                // on peut cree sa propre classe pour representer une erreur
                                // et ainsi differencier les types d erreures rencontré
        }


        ===>
        try{

            $forecast = $weather->getForecast('Paris');
            $today = $weather->getToday('Paris,FR')

        }catch(APIExceptions $e ){

            $error = "erreur api";

        }catch(Exceptions $e){

            $error = "erreur classique";

        }


        */
