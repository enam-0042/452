
import React, { useState } from 'react';

import ReactPaginate from 'react-paginate';
import './style/tabulationPagination.css';

function Itemstabulation({ currentItems, listOfStudent }) {
    console.log('blfjksfsk')
    // console.log(currentItems);
    let items = currentItems[0].course_list;
    let totalCredit = 0;
    let gpaMcredits = 0;
    let totalGPA = 0;
    console.log(listOfStudent);
    return (
        <>
            <table className="tablePagination">
                <thead>
                    <tr>
                        <th>Course Code</th>
                        <th>Course Title</th>
                        <th>Type</th>
                        <th>Credit</th>
                        <th>Semester</th>
                        <th>Gpa</th>
                        <th>Letter Grade</th>

                    </tr>
                </thead>
                <tbody>
                    {

                        items.map((item, key) => {
                            // let hell=currentItems[0].course_list
                            // if (course.gpa !== 0) {
                            //             totalCredit += course.course_credits;
                            //             gpaMcredits += (course.course_credits * course.gpa);
                            //             totalGPA = (gpaMcredits / totalCredit).toFixed(2);
                            //         }

                            if (item.gpa !== 0) {
                                totalCredit += item.course_credits;
                                gpaMcredits += (item.course_credits * item.gpa);
                                totalGPA = (gpaMcredits / totalCredit).toFixed(2);
                            }
                            console.log(totalGPA);
                            return (
                                <>
                                    <tr>
                                        <td>
                                            {item.course_id}
                                        </td>
                                        <td>
                                            {item.course_title}
                                        </td>
                                        <td>
                                            {item.course_type}
                                        </td>
                                        <td>
                                            {item.course_credits}
                                        </td>
                                        <td>
                                            {item.semester}
                                        </td>
                                        <td>
                                            {item.gpa}
                                        </td>
                                        <td>
                                            {item.letter_grade}
                                        </td>
                                    </tr>
                                </>
                                // <tr key={key}>
                                //     <td>{key + 1}</td>
                                //     <td>{item.reg_no}</td>
                                //     <td>{item.session}</td>
                                //     <td>{item.std_name}</td>
                                //     {item.course_list.map((course) => {
                                //         if (course.gpa !== 0) {
                                //             totalCredit += course.course_credits;
                                //             gpaMcredits += (course.course_credits * course.gpa);
                                //             totalGPA = (gpaMcredits / totalCredit).toFixed(2);
                                //         }
                                //         return (
                                //             <td>{course.gpa}   {course.letter_grade}</td>
                                //         )
                                //     })}
                                //     <td>{totalCredit}</td>
                                //     <td>{totalGPA}</td>
                                //     <td>
                                //         {totalGPA === 4 && "A+"}
                                //         {(totalGPA >= 3.75 && totalGPA < 4) && "A"}
                                //         {(totalGPA >= 3.5 && totalGPA < 3.75) && "A-"}
                                //         {(totalGPA >= 3.25 && totalGPA < 3.5) && "B+"}
                                //         {(totalGPA >= 3 && totalGPA < 3.25) && "B"}
                                //         {(totalGPA >= 2.75 && totalGPA < 3) && "B-"}
                                //         {(totalGPA >= 2.5 && totalGPA < 2.75) && "C+"}
                                //         {(totalGPA >= 2.25 && totalGPA < 2.5) && "C"}
                                //         {(totalGPA >= 2 && totalGPA < 2.25) && "C-"}
                                //         {(totalGPA >= 0 && totalGPA < 2) && "F"}
                                //     </td>
                                // </tr>
                            )

                        }
                        )}

                </tbody>
            </table>
            <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'start', flexWrap: 'nowrap', bottom: 0 }}>
                <h4>Total Student: {listOfStudent.length > 0 && listOfStudent.length}</h4>
            </div>

            <div style={{ width: '100%', display: 'flex', flexDirection: 'row', alignContent: 'center' }}>
                <div style={{ marginRight: '50px' }}>

                    <span style={{ marginLeft: '10px', marginRight: '30px' }}>Signature of the Chairman</span>
                    <span>________________________</span>
                </div>
                <div >

                    <span style={{ marginLeft: '10px', marginRight: '30px' }}>SignatureController of Examinations</span>
                    <span>________________________________</span>
                </div>
            </div> <br />
            <div style={{ width: '100%', display: 'flex', flexDirection: 'row', alignContent: 'center' }}>
                <div style={{ marginRight: '50px' }}>
                    <span style={{ marginLeft: '10px', marginRight: '30px' }}>Signature of the Members</span>
                    <span>_______________________________________________________________________</span>
                </div>
            </div> <br />
            <div style={{ width: '100%', display: 'flex', flexDirection: 'row', alignContent: 'center' }}>
                <div style={{ marginRight: '50px' }}>
                    <span style={{ marginLeft: '10px', marginRight: '30px' }}>Signature of the Tabulators</span>
                    <span>_______________________________________________________________________</span>
                </div>
            </div>
        </>
    );
}

export function PaginatedItemsTabulationSheet({ itemsPerPage, listOfStudent }) {
    console.log('herro');
    console.log(listOfStudent);

    const [itemOffset, setItemOffset] = useState(0);

    const endOffset = itemOffset + itemsPerPage;

    console.log(`Loading items from ${itemOffset} to ${endOffset}`);

    const currentItems = listOfStudent.slice(itemOffset, endOffset);
    const pageCount = Math.ceil(listOfStudent.length / itemsPerPage);

    const handlePageClick = (event) => {
        const newOffset = (event.selected * itemsPerPage) % listOfStudent.length;
        console.log(
            `User requested page number ${event.selected}, which is offset ${newOffset}`
        );
        setItemOffset(newOffset);
    };

    return (
        <>
            <Itemstabulation currentItems={currentItems} listOfStudent={listOfStudent} />
            <ReactPaginate
                breakLabel="..."
                nextLabel="next >"
                onPageChange={handlePageClick}
                pageRangeDisplayed={2}
                pageCount={pageCount}
                previousLabel="< previous"
                renderOnZeroPageCount={null}
            />
        </>
    );
}