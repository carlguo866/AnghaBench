; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_List.c_List_Mark.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_List.c_List_Mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, void (i8*, i8*)*)* @List_Mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @List_Mark(i8* %0, i8* %1, void (i8*, i8*)* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, i8*)*, align 8
  %7 = alloca %struct.List*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store void (i8*, i8*)* %2, void (i8*, i8*)** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.List*
  store %struct.List* %10, %struct.List** %7, align 8
  %11 = load %struct.List*, %struct.List** %7, align 8
  %12 = getelementptr inbounds %struct.List, %struct.List* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  br label %14

14:                                               ; preds = %17, %3
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load void (i8*, i8*)*, void (i8*, i8*)** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %8, align 8
  call void %18(i8* %19, i8* %20)
  %21 = load %struct.List*, %struct.List** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i8** @List_Next(%struct.List* %21, i8* %22)
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  br label %14

25:                                               ; preds = %14
  ret void
}

declare dso_local i8** @List_Next(%struct.List*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
