; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_mfi_pdstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_mfi_pdstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mfi_pdstate.buf = internal global [16 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c"UNCONFIGURED GOOD\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"UNCONFIGURED BAD\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"HOT SPARE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"OFFLINE\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"REBUILD\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ONLINE\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"COPYBACK\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"JBOD\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"PSTATE 0x%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mfi_pdstate(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %14 [
    i32 128, label %5
    i32 129, label %6
    i32 134, label %7
    i32 133, label %8
    i32 135, label %9
    i32 131, label %10
    i32 132, label %11
    i32 136, label %12
    i32 130, label %13
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %17

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %17

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %17

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %17

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %17

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %17

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %17

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %17

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mfi_pdstate.buf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %15)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mfi_pdstate.buf, i64 0, i64 0), i8** %2, align 8
  br label %17

17:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %18 = load i8*, i8** %2, align 8
  ret i8* %18
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
