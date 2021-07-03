INSERT INTO doctors(firstName, lastName, specialty, quantum_clearance, quantum, alias)
VALUES
    ("Laura", "Tucker", "dog nutrition", FALSE, NULL, NULL),
    ("Frank", "Blaze", "quantum security", TRUE, TRUE, "Firestorm"),
    ("Sullivan", "Cole", "aquarium maintenance", FALSE, NULL, NULL),
    ("Emma", "Walker", "psionics", TRUE, TRUE, "Sage"),
    ("Aaron", "MacKenzie", "fish happiness", TRUE, NULL, NULL);

INSERT INTO maladies(name, description)
VALUES
    ("tranquil syndrome", "slowed metabolism, sleeps for days at a time"),
    ("buzzing dysfunction", "only makes sounds a bee could make"),
    ("contagious panic", "what it sounds like"),
    ("brittle delusion", "physically normal, exhibits belief that the self and entire world is incredibly fragile"),
    ("cheerful baldness", "irrepressible optimism accompanied by hair loss"),
    ("curable shock", "usually caused by another condition; sometimes a reaction to quantum power manifestation"),
    ("incurable shock", "permanent state of shock"),
    ("laughing deficiency", "loss of sense of humor"),
    ("summer tumor", "seasonally occuring tumor"),
    ("lizard migraine", "migraine caused upon sight of lizard");

INSERT INTO quantum_powers(name, description, psionic)
VALUES
    ("invisibility", "disappears from sight", FALSE),
    ("teleportation", "instantly transports self from one location to another, known, location", FALSE),
    ("clairvoyance", "exhibits limited knowledge of future events", TRUE),
    ("telepathic messaging", "send and receive mental messages; non-invasive", TRUE),
    ("weather control", "exhibits control over local weather patterns", FALSE),
    ("archer", "shoots arrows. (YES, this is a SUPERPOWER, especially among animals who are not typically capable of wielding bows. Whoever keeps deleting this from our records, please STOP. - Dr. Blaze)", FALSE),
    ("telepathic scan", "accesses surface thoughts of target, usually with physical contact", TRUE);

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

INSERT INTO animal_maladies(animal_id, malady_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 3),
    (3, 4),
    (4, 1),
    (5, 5),
    (6, 4),
    (6, 6),
    (7, 6),
    (8, 7),
    (8, 8),
    (8, 9),
    (9, 2),
    (9, 10),
    (10, 2);

INSERT INTO animal_powers(animal_id, power_id)
VALUES
    (2, 1),
    (2, 2),
    (5, 3),
    (5, 4),
    (5, 5),
    (6, 2),
    (6, 6),
    (6, 7),
    (7, 1),
    (7, 3);
