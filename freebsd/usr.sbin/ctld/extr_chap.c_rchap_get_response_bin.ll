; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_chap.c_rchap_get_response_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_chap.c_rchap_get_response_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchap = type { i32, i32, i32, i32 }

@CHAP_DIGEST_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rchap*, i8**, i64*)* @rchap_get_response_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rchap_get_response_bin(%struct.rchap* %0, i8** %1, i64* %2) #0 {
  %4 = alloca %struct.rchap*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.rchap* %0, %struct.rchap** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64, i64* @CHAP_DIGEST_LEN, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = call i8* @calloc(i64 %10, i32 1)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load %struct.rchap*, %struct.rchap** %4, align 8
  %18 = getelementptr inbounds %struct.rchap, %struct.rchap* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rchap*, %struct.rchap** %4, align 8
  %21 = getelementptr inbounds %struct.rchap, %struct.rchap* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rchap*, %struct.rchap** %4, align 8
  %24 = getelementptr inbounds %struct.rchap, %struct.rchap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rchap*, %struct.rchap** %4, align 8
  %27 = getelementptr inbounds %struct.rchap, %struct.rchap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @chap_compute_md5(i32 %19, i32 %22, i32 %25, i32 %28, i8* %29, i64 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = load i8**, i8*** %5, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  ret void
}

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @chap_compute_md5(i32, i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
