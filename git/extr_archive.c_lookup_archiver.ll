; ModuleID = '/home/carl/AnghaBench/git/extr_archive.c_lookup_archiver.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive.c_lookup_archiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archiver = type { i32 }

@nr_archivers = common dso_local global i32 0, align 4
@archivers = common dso_local global %struct.archiver** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.archiver* (i8*)* @lookup_archiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.archiver* @lookup_archiver(i8* %0) #0 {
  %2 = alloca %struct.archiver*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.archiver* null, %struct.archiver** %2, align 8
  br label %35

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %31, %8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @nr_archivers, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.archiver**, %struct.archiver*** @archivers, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.archiver*, %struct.archiver** %15, i64 %17
  %19 = load %struct.archiver*, %struct.archiver** %18, align 8
  %20 = getelementptr inbounds %struct.archiver, %struct.archiver* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcmp(i8* %14, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %13
  %25 = load %struct.archiver**, %struct.archiver*** @archivers, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.archiver*, %struct.archiver** %25, i64 %27
  %29 = load %struct.archiver*, %struct.archiver** %28, align 8
  store %struct.archiver* %29, %struct.archiver** %2, align 8
  br label %35

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %9

34:                                               ; preds = %9
  store %struct.archiver* null, %struct.archiver** %2, align 8
  br label %35

35:                                               ; preds = %34, %24, %7
  %36 = load %struct.archiver*, %struct.archiver** %2, align 8
  ret %struct.archiver* %36
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
