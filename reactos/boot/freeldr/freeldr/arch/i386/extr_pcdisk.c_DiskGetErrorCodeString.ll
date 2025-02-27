; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcdisk.c_DiskGetErrorCodeString.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcdisk.c_DiskGetErrorCodeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"no error\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"bad command passed to driver\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"address mark not found or bad sector\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"diskette write protect error\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"sector not found\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"fixed disk reset failed\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"diskette changed or removed\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"bad fixed disk parameter table\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"DMA overrun\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"DMA access across 64k boundary\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"bad fixed disk sector flag\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"bad fixed disk cylinder\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"unsupported track/invalid media\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"invalid number of sectors on fixed disk format\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"fixed disk controlled data address mark detected\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"fixed disk DMA arbitration level out of range\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"ECC/CRC error on disk read\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"recoverable fixed disk data error, data fixed by ECC\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"controller error (NEC for floppies)\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"seek failure\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"time out, drive not ready\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"fixed disk drive not ready\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"fixed disk undefined error\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"fixed disk write fault on selected drive\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"fixed disk status error/Error reg = 0\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"sense operation failed\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"unknown error code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @DiskGetErrorCodeString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @DiskGetErrorCodeString(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %31 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %12
    i32 8, label %13
    i32 9, label %14
    i32 10, label %15
    i32 11, label %16
    i32 12, label %17
    i32 13, label %18
    i32 14, label %19
    i32 15, label %20
    i32 16, label %21
    i32 17, label %22
    i32 32, label %23
    i32 64, label %24
    i32 128, label %25
    i32 170, label %26
    i32 187, label %27
    i32 204, label %28
    i32 224, label %29
    i32 255, label %30
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %32

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %32

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %32

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %32

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %32

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %32

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %32

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %32

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %32

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %32

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %32

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %32

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %32

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %32

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %32

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %32

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %32

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %32

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %32

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %32

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %32

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %32

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %32

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %32

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %32

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %32

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
