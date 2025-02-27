; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_d1_srtp.c_find_profile_by_name.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_d1_srtp.c_find_profile_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@srtp_known_profiles = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__**, i64)* @find_profile_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_profile_by_name(i8* %0, %struct.TYPE_4__** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @srtp_known_profiles, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %8, align 8
  br label %10

10:                                               ; preds = %33, %3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @strlen(i64 %19)
  %21 = icmp eq i64 %16, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @strncmp(i64 %25, i8* %26, i64 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %32, align 8
  store i32 0, i32* %4, align 4
  br label %37

33:                                               ; preds = %22, %15
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 1
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %8, align 8
  br label %10

36:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @strncmp(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
