; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_so_txtime.c_setsockopt_txtime.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_so_txtime.c_setsockopt_txtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_txtime = type { i32, i32 }

@cfg_clockid = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TXTIME = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"setsockopt txtime\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"getsockopt txtime\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"getsockopt txtime: mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @setsockopt_txtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setsockopt_txtime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock_txtime, align 4
  %4 = alloca %struct.sock_txtime, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds %struct.sock_txtime, %struct.sock_txtime* %3, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.sock_txtime, %struct.sock_txtime* %3, i32 0, i32 1
  %8 = load i32, i32* @cfg_clockid, align 4
  store i32 %8, i32* %7, align 4
  %9 = bitcast %struct.sock_txtime* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  store i32 8, i32* %5, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @SOL_SOCKET, align 4
  %12 = load i32, i32* @SO_TXTIME, align 4
  %13 = call i64 @setsockopt(i32 %10, i32 %11, i32 %12, %struct.sock_txtime* %3, i32 8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @error(i32 1, i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @SOL_SOCKET, align 4
  %21 = load i32, i32* @SO_TXTIME, align 4
  %22 = call i64 @getsockopt(i32 %19, i32 %20, i32 %21, %struct.sock_txtime* %4, i32* %5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @error(i32 1, i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 8
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @memcmp(%struct.sock_txtime* %3, %struct.sock_txtime* %4, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %27
  %36 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.sock_txtime*, i32) #2

declare dso_local i32 @error(i32, i32, i8*) #2

declare dso_local i64 @getsockopt(i32, i32, i32, %struct.sock_txtime*, i32*) #2

declare dso_local i64 @memcmp(%struct.sock_txtime*, %struct.sock_txtime*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
