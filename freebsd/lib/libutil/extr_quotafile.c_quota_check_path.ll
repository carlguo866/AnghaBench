; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_check_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_check_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i64 }
%struct.stat = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quota_check_path(%struct.quotafile* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.quotafile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  store %struct.quotafile* %0, %struct.quotafile** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @stat(i8* %7, %struct.stat* %6)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.quotafile*, %struct.quotafile** %4, align 8
  %15 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
