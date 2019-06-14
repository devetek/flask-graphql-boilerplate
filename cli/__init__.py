# __all__ = ["init", "config", "create-app", "deploy"]

"""[Available syntax for this devTek CLI]
    init              - Usage for the first time initialize this tools
    config            - set, get, update configuration
    create-app        - Create your apps base on devTek boilerplate
                        Available apps:
                          - angular [Angular@^7.x]
                          - react [React@^16.x]
                          - python-api [python ^3.7.1, Flask@1.0.2, flask-restful@0.3.7]
                          - laravel [Laravel@5.x]
                          - lumen [Lumen@5.3]
                        For people who want to contribute and create new boilerpale for devKit, please read the documentation properly. <a href="http://docs.devetek.com/devKit/create-app">devKit - Create App</a>
      deploy          - Deploy application base on .devetek/app.yaml to registered Devetek servers
                        Registered cloud computing:
                          - Digital Ocean
                          - AWS
                        For people who want to contribute adding new cloud computing or datacenter wrapper, plese read the documentation properly. <a href="http://docs.devetek.com/devKit/create-app">devKit - Deploy</a>    
"""
