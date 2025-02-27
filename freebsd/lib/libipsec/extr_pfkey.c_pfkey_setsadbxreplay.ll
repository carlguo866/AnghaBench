; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libipsec/extr_pfkey.c_pfkey_setsadbxreplay.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libipsec/extr_pfkey.c_pfkey_setsadbxreplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_x_sa_replay = type { i32, i32, i32 }

@SADB_X_EXT_SA_REPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @pfkey_setsadbxreplay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pfkey_setsadbxreplay(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sadb_x_sa_replay*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to %struct.sadb_x_sa_replay*
  store %struct.sadb_x_sa_replay* %11, %struct.sadb_x_sa_replay** %8, align 8
  store i32 12, i32* %9, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = load i64, i64* %6, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.sadb_x_sa_replay*, %struct.sadb_x_sa_replay** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @memset(%struct.sadb_x_sa_replay* %20, i32 0, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @PFKEY_UNIT64(i32 %23)
  %25 = load %struct.sadb_x_sa_replay*, %struct.sadb_x_sa_replay** %8, align 8
  %26 = getelementptr inbounds %struct.sadb_x_sa_replay, %struct.sadb_x_sa_replay* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @SADB_X_EXT_SA_REPLAY, align 4
  %28 = load %struct.sadb_x_sa_replay*, %struct.sadb_x_sa_replay** %8, align 8
  %29 = getelementptr inbounds %struct.sadb_x_sa_replay, %struct.sadb_x_sa_replay* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 3
  %32 = load %struct.sadb_x_sa_replay*, %struct.sadb_x_sa_replay** %8, align 8
  %33 = getelementptr inbounds %struct.sadb_x_sa_replay, %struct.sadb_x_sa_replay* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %19, %18
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i32 @memset(%struct.sadb_x_sa_replay*, i32, i32) #1

declare dso_local i32 @PFKEY_UNIT64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
