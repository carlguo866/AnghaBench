; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_claim_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_claim_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_sb_info = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"free count underflow, allocating sector %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32)* @hpfs_claim_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpfs_claim_alloc(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %6)
  store %struct.hpfs_sb_info* %7, %struct.hpfs_sb_info** %5, align 8
  %8 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %9 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %14 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @hpfs_error(%struct.super_block* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %26 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 4
  br label %32

27:                                               ; preds = %12
  %28 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %29 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %30, -1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %21, %27, %2
  ret void
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
