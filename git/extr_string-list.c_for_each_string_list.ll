; ModuleID = '/home/carl/AnghaBench/git/extr_string-list.c_for_each_string_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_string-list.c_for_each_string_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_each_string_list(%struct.string_list* %0, i32 (i32*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i32 (i32*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store i32 (i32*, i8*)* %1, i32 (i32*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.string_list*, %struct.string_list** %4, align 8
  %12 = getelementptr inbounds %struct.string_list, %struct.string_list* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %5, align 8
  %17 = load %struct.string_list*, %struct.string_list** %4, align 8
  %18 = getelementptr inbounds %struct.string_list, %struct.string_list* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 %16(i32* %22, i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %31

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %9

31:                                               ; preds = %26, %9
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
