; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_events_name_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_events_name_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @events_name_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @events_name_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tep_event**, align 8
  %7 = alloca %struct.tep_event**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.tep_event**
  store %struct.tep_event** %10, %struct.tep_event*** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.tep_event**
  store %struct.tep_event** %12, %struct.tep_event*** %7, align 8
  %13 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  %14 = load %struct.tep_event*, %struct.tep_event** %13, align 8
  %15 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tep_event**, %struct.tep_event*** %7, align 8
  %18 = load %struct.tep_event*, %struct.tep_event** %17, align 8
  %19 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcmp(i32 %16, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %2
  %27 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  %28 = load %struct.tep_event*, %struct.tep_event** %27, align 8
  %29 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tep_event**, %struct.tep_event*** %7, align 8
  %32 = load %struct.tep_event*, %struct.tep_event** %31, align 8
  %33 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcmp(i32 %30, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %26
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @events_id_cmp(i8* %41, i8* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %38, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @events_id_cmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
