int[] nums= {5,4,2,7,6,8,5,2,8,14};
for(int i= 0;i<nums.length; i++){
  nums[i]=nums[i]+nums[i];
  nums[i]+=int(random(10));
  nums[i]+=nums[i];
  println(nums[i]);
}