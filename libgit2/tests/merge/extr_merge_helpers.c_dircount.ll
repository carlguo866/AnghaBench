; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_dircount.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_dircount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"/.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dircount(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = call i32 @git_buf_len(%struct.TYPE_4__* %9)
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %12, 5
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = call i32 @git_buf_len(%struct.TYPE_4__* %18)
  %20 = sub nsw i32 %19, 5
  %21 = add nsw i32 %17, %20
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14, %2
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %24, %14
  ret i32 0
}

declare dso_local i32 @git_buf_len(%struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
