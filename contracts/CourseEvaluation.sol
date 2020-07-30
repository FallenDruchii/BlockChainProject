pragma solidity >=0.4.21 <0.7.0;

contract CourseEvaluation
{
    string public message;
    string private Question_1;
    string private Question_2;
    string private Question_3;
    string private Question_4;
    string private Question_5;
    string private Question_6;
    string private Question_7;
    string private Question_8;
    string private Question_9;
    string private Question_10;
    string private Question_11;
    string private Question_12;
    string private Question_13;
    string private Question_14;
    string private Question_15;
    string private Question_16;
    string private Question_17;
    string private Question_18;
    string private Question_19;
    string private Question_20;
    string private Question_21;
    string private Question_22;
    string private Question_23;
    string private Question_24;
    string private Question_25;
    string private comment;
    uint[] private answer_array;

    constructor () public {
        host = msg.sender;// store the address of the host
        message = 'Fragebogen zu Bewertung der Vorlesungen, Antwortmöglichkeiten zwischen 1 und 5, 1 = Sehr gut, 5 = Sehr schlecht';
        Question_1 = '1. Die LV ist klar strukturiert.';
        Question_2 = '2. Die Lernziele der LV sind transparent.';
        Question_3 = '3. Die LV wird durch Online-Lehr-/Lernmaterialien unterstüzt.';
        Question_4 = '4. Es werden Hinweise auf Literatur und andere Quellen mit Bezug auf die LV gegenben.';
        Question_5 = '5. In der LV werden Zusammenhänge vermittelt.';
        Question_6 = '6. Dozent/in ist auf die LV vorbereitet.';
        Question_7 = '7. Dozent/in vergewissert sch, ob der behandelte Stoff verstaden wurde.';
        Question_8 = '8. Dozent/in hat mein INteresse für das nehandelte Stoffgebiet angeregt.';
        Question_9 = '9. Dozent/in spricht akustisch verständlich.';
        Question_10 = '10. Dozent/in kann auch schwierige Sachverhalte erklären.';
        Question_11 = '11. Dozent/in bringt übersichtliche Zusammenfassungen.';
        Question_12 = '12. Dozent/in ist auch außerhalb der LV ansprechbar.';
        Question_13 = '13. Dozent/in ist gegenüber Fragen und Anregungen der Studierenden aufgeschlossen';
        Question_14 = '14. Wesentliche Prüfungsanforderungen werden herausgearbeitet';
        Question_15 = 'Ich habe ca. ... Prozent der LV (digital oder in Präsenz) teilgenommen.(1:<20% 2:21%-40% 3:41%-60% 4:61%-80% 5:81%-100%)';
        Question_16 = 'Meine Vor-und Nachbereitung (pro Woche) betrug... (1: <1h, 2: 1-3h, 3: 4-5h, 4: 6-7h, 5: mehr)';
        Question_17 = 'Diesen Zeitaufwand halte ich für... (1: zu gering, 3: angemssen, 5: zu hoch)';
        Question_18 = 'Ich habe den Stoff mit ca. ... Quellen aufgearbeitet. (1: keine, 2: 1-3, 3: 4-5, 4: 6-7, 5: mehr)';
        Question_19 = 'Ich habe ausreichende Vorkenntnisse für diese LV. (1: ja, 5: nein)';
        Question_20 = 'Die LV findet mindestens seit dem 20.04.2020 regelmäßing und pünktlich in digitaler Lehre/Präsenzlehre statt.';
        Question_21 = 'Die LV findet als Audio- bzw. Videokonferenz statt. (1: ja, 5: nein)';
        Question_22 = 'Der Dozent fordert aktiv zur Nutzung interaktiver Möglichkeiten in der Online LV auf. (Chat/Mikro)';
        Question_23 = 'Die empfohlene Literatur und die Medienquellen sind in der Bibliothek erhältlich.';
        Question_24 = 'Die LV wird mit ... bewertet.';
        Question_25 = 'Weitere Anmerkungen an den Dozent/in.';
        comment = 'Keine Anmerkung an den Dozent/in vorhanden.';
        answer_array = new uint[](25);

        for(uint i = 0; i < answer_array.length; i++){
            answer_array[i] = 3;
        }
    }


    address public host; // address of the host

    modifier restricted()
    {
        require(msg.sender == host,"Only Host ist allowed to do this operation");
        _;
    }


    function getTotalRating() public view returns (uint){
        //Ein Teil der Antworten betrifft ja nicht den Dozenten direkt und wird daher nicht in der Bewertung wiedergepiegelt
    {
        uint totalvalue;

        for(uint i = 0; i<answer_array.length; i++){
            totalvalue += answer_array[i];
        }

            uint rating_ = totalvalue*10/25;
            return rating_;
    }
}
    function host_reward(uint amount) public payable {
        msg.sender.transfer(amount);
    }

    function showQuestion(uint questionID) public view returns(string memory){
        require(questionID > 0 && questionID <= 25, "The Number you entered is too low or too high, please try again!");
            // Je nach ID werden hier die oben gesetzten Fragen angezeigt
        if(questionID == 1){
            return Question_1;
        }else if(questionID == 2){
            return Question_2;
        }else if(questionID == 3){
            return Question_3;
        }else if(questionID == 4){
            return Question_4;
        }else if(questionID == 5){
            return Question_5;
        }else if(questionID == 6){
            return Question_6;
        }else if(questionID == 7){
            return Question_7;
        }else if(questionID == 8){
            return Question_8;
        }else if(questionID == 9){
            return Question_9;
        }else if(questionID == 10){
            return Question_10;
        }else if(questionID == 11){
            return Question_11;
        }else if(questionID == 12){
            return Question_12;
        }else if(questionID == 13){
            return Question_13;
        }else if(questionID == 14){
            return Question_14;
        }else if(questionID == 15){
            return Question_15;
        }else if(questionID == 16){
            return Question_16;
        }else if(questionID == 17){
            return Question_17;
        }else if(questionID == 18){
            return Question_18;
        }else if(questionID == 19){
            return Question_19;
        }else if(questionID == 20){
            return Question_20;
        }else if(questionID == 21){
            return Question_21;
        }else if(questionID == 22){
            return Question_22;
        }else if(questionID == 23){
            return Question_23;
        }else if(questionID == 24){
            return Question_24;
        }else if(questionID == 25){
            return Question_25;
        }
    }

    function setAnswer(uint answerID,uint _answer) public {
        answer_array[answerID-1] = _answer;
    }

    function showAnswer(uint answerID) public view returns (uint) {
        return answer_array[answerID-1];
    }


    function setComment(string memory _comment) public {
        // Setzt den Comment für falls man noch eine Anmerkung an den Dozenten hat
        comment = _comment;
    }

    function showComment() public view returns(string memory comment_) {
        // Zeigt die Anmerkung an den Dozenten
        comment_ = comment;
        return comment_;
    }
}