/* See doctor names with id's, sorted by last name */
SELECT 
	lastName,
    firstName,
    doctor_id
FROM 
	sasha_mackowiak.doctors
ORDER BY
	lastName;

/* find a specific doctor's id */
SELECT
    firstName,
    lastName,
    doctor_id
FROM
    sasha_mackowiak.doctors
WHERE
    lastName = 'Blaze';

/* select all animals with quantum powers, and sort them by alias */
SELECT
    alias,
    type,
    firstName,
    lastName
FROM
    animals
WHERE
    quantum = TRUE
ORDER BY
    alias;

/* see animals listed with their doctor's names, sorted by doctor */
SELECT
    CONCAT_WS(', ', a.lastName, a.firstName) `animal name`,
    a.type,
    a.breed,
    a.age,
    a.admitted,
    CONCAT_WS(', ', d.lastName, d.firstName) `assigned doctor`
FROM
    sasha_mackowiak.animals a
INNER JOIN sasha_mackowiak.doctors d USING(doctor_id)
ORDER BY
    `assigned doctor`,
    `animal name`;

/* all possible combinations of animals and maladies */
SELECT
    CONCAT_WS(', ', a.lastName, a.firstName) `animal name`,
    a.type,
    m.name
FROM
    sasha_mackowiak.animals a
CROSS JOIN maladies m;

/* list the animals and maladies assigned to each doctor OLD SYNTAX*/
SELECT
    CONCAT_WS(', ', d.lastName, d.firstName) `doctor`,
    d.specialty,
    m.name `malady`,
    CONCAT_WS(', ', a.lastName, a.firstName) `patient` 
FROM
    sasha_mackowiak.doctors d,
    sasha_mackowiak.animals a,
    sasha_mackowiak.maladies m,
    sasha_mackowiak.animal_maladies am
WHERE
    a.doctor_id = d.doctor_id AND am.animal_id = a.animal_id AND am.malady_id = m.malady_id
ORDER BY
    `doctor`,
    `malady`;

/* list the animals and maladies assigned to each doctor NEWER, BETTER SYNTAX? */
SELECT
    CONCAT_WS(', ', d.lastName, d.firstName) `doctor`,
    d.specialty,
    m.name `malady`,
    CONCAT_WS(', ', a.lastName, a.firstName) `patient`
FROM
    sasha_mackowiak.doctors d
    INNER JOIN sasha_mackowiak.animals a ON a.doctor_id = d.doctor_id
    INNER JOIN sasha_mackowiak.animal_maladies am ON am.animal_id = a.animal_id
    INNER JOIN sasha_mackowiak.maladies m ON m.malady_id = am.malady_id
ORDER BY
    `doctor`,
    `malady`;

/* to search for a specific doctor in the above queries: */
WHERE
    d.firstName = 'Laura'


/* get everyone (doctors and animals) with quantum powers, list powers, and sort by alias */
/* doctors */
SELECT
    d.alias `alias`,
    qp.name`power`,
    qp.description`power description`
FROM
    sasha_mackowiak.doctors d
    INNER JOIN sasha_mackowiak.doctor_powers dp ON d.doctor_id = dp.doctor_id
    INNER JOIN sasha_mackowiak.quantum_powers qp ON dp.power_id = qp.power_id
/* combine with animals */
UNION
SELECT
    a.alias,
    qp.name,
    qp.description
FROM
    sasha_mackowiak.animals a
    INNER JOIN sasha_mackowiak.animal_powers ap ON a.animal_id = ap.animal_id
    INNER JOIN sasha_mackowiak.quantum_powers qp ON ap.power_id = qp.power_id
ORDER BY
    `alias`;

