; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-siphash24.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-siphash24.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.in = private unnamed_addr constant [15 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14], align 16
@__const.main.key = private unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [15 x i32], align 16
  %6 = alloca [16 x i32], align 16
  %7 = alloca [20 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = bitcast [15 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([15 x i32]* @__const.main.in to i8*), i64 60, i1 false)
  %9 = bitcast [16 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([16 x i32]* @__const.main.key to i8*), i64 64, i1 false)
  %10 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %11 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 0
  %12 = call i32 @memcpy(i32* %10, i32* %11, i32 60)
  %13 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %15 = call i32 @do_test(i32* %13, i32 60, i32* %14)
  %16 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 0
  %19 = call i32 @memcpy(i32* %17, i32* %18, i32 60)
  %20 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %23 = call i32 @do_test(i32* %21, i32 60, i32* %22)
  %24 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 0
  %27 = call i32 @memcpy(i32* %25, i32* %26, i32 60)
  %28 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %31 = call i32 @do_test(i32* %29, i32 60, i32* %30)
  %32 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 0
  %35 = call i32 @memcpy(i32* %33, i32* %34, i32 60)
  %36 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %39 = call i32 @do_test(i32* %37, i32 60, i32* %38)
  %40 = call i32 (...) @test_short_hashes()
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @do_test(i32*, i32, i32*) #2

declare dso_local i32 @test_short_hashes(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
