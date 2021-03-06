*** Settings ***

DOCUMENTATION     Praticing concepts: test suite for insert, update
...               and delete books using API "FakeRestAPI.Web".

Resource          ../keywords/faker-api.robot

Suite Setup       Connect API
Suite Teardown    Disconnect API

*** Test Case ***

TestCase 01: Recording a new book
    [Tags]                                         insert
    Record a new book
    Check status code and reason                   200                          OK
    Check if Title of the book is correct          Teste
    Check if PageCount of the book is correct      210
    Check if Description of the book is correct    Teste1

TestCase 02: Updating data of
    [Tags]                                         update
    Update data of a existing book ID=             15
    Check status code and reason                   200                          OK
    Check if Title of the book is correct          Teste com Robot Framework
    Check if PageCount of the book is correct      400
    Check if Description of the book is correct    Conceitos de RF

TestCase 03: Remove a book
    [Tags]                                         delete
    Delete a existing book ID=                     200
    Check status code and reason                   200                          OK
    Check if book was removed


