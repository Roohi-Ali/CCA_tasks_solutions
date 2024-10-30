//Given an array of integers, write a function to find the second largest number

const testarr = [-5,6,2,1,100,5,6,100,-7]

const largestNumber = (arr: number[])=>{
    let max=0;
    arr.map((el)=>{
        el > max ? max=el : null
    })
    return max
}

console.log(largestNumber(testarr))