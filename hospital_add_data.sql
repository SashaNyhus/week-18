INSERT INTO doctors(firstName, lastName, specialty, quantum_clearance, quantum, alias)
VALUES
    ("Laura", "Tucker", "dog nutrition", FALSE, NULL, NULL),
    ("Frank", "Blaze", "quantum security", TRUE, TRUE, "Firestorm"),
    ("Sullivan", "Cole", "aquarium maintenance", FALSE, NULL, NULL),
    ("Emma", "Walker", "psionics", TRUE, TRUE, "Sage"),
    ("Aaron", "MacKenzie", "fish happiness", TRUE, NULL, NULL);

INSERT INTO animals(firstName, lastName, type, breed, admitted, doctor_id, quantum, alias)
VALUES
    ("Lola", "Wilkerson", "dog", "dalmation", 2020-08-04, 1, FALSE, NULL),
    ("Sylvia", "Green", "cat", "siamese", 2020-09-04, 2, TRUE, "Shadow"),
    ("Diana", "Green", "cat", "siamese", 2021-03-06, 2, FALSE, NULL),
    ("Rachel", "Bishop", "goldfish", "shubunkin", 2021-04-15, 3, FALSE, NULL),
    ("Alex", "Bryant", "dog", "saint bernard", 2021-05-14, 4, TRUE, "Saint"),
    ("Victor", "Lex", "hamster", "chinese dwarf", 2021-05-17, 4, TRUE, "Zip"),
    ("Jacob", "Hart", "goldfish", "fantail", 2021-06-01, 5, TRUE, "Shimmer"),
    ("Eric", "Drake", "lizard", "bearded dragon", 2021-06-07, 3, FALSE, NULL),
    ("James", "Cassell", "dog", "golden retriever", 2021-06-09, 1, FALSE, NULL),
    ("Candi", "Bryant", "dog", "greyhound", 2021-06-27, 1, FALSE, NULL);
