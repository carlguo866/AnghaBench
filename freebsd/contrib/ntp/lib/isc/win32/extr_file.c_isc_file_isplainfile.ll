; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_isplainfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_isplainfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@ISC_R_INVALIDFILE = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_file_isplainfile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  %5 = call i32 @memset(%struct.stat* %4, i32 0, i32 4)
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @stat(i8* %6, %struct.stat* %4)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @errno, align 4
  %11 = call i32 @isc__errno2result(i32 %10)
  store i32 %11, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @S_ISREG(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ISC_R_INVALIDFILE, align 4
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %17, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @isc__errno2result(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
