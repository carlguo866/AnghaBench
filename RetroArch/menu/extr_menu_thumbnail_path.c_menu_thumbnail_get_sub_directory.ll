; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail_path.c_menu_thumbnail_get_sub_directory.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail_path.c_menu_thumbnail_get_sub_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Named_Snaps\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Named_Titles\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Named_Boxarts\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_thumbnail_get_sub_directory(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  %7 = icmp ne i8** %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %18 [
    i32 1, label %11
    i32 2, label %13
    i32 3, label %15
    i32 0, label %17
  ]

11:                                               ; preds = %9
  %12 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i32 1, i32* %3, align 4
  br label %20

13:                                               ; preds = %9
  %14 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  store i32 1, i32* %3, align 4
  br label %20

15:                                               ; preds = %9
  %16 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  store i32 1, i32* %3, align 4
  br label %20

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %9, %17
  br label %19

19:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %15, %13, %11, %8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
