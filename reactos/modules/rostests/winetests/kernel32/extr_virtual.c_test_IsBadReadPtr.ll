; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_virtual.c_test_IsBadReadPtr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_virtual.c_test_IsBadReadPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Expected IsBadReadPtr to return FALSE, got %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Expected IsBadReadPtr to return TRUE, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IsBadReadPtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IsBadReadPtr() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %4 = call i64 @IsBadReadPtr(i8* null, i32 0)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @FALSE, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = call i64 @IsBadReadPtr(i8* null, i32 1)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @TRUE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @IsBadReadPtr(i8* %18, i32 0)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @FALSE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @IsBadReadPtr(i8* %26, i32 1)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @TRUE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = call i64 @IsBadReadPtr(i8* %3, i32 0)
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = load i64, i64* @FALSE, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %1, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = call i64 @IsBadReadPtr(i8* %3, i32 1)
  store i64 %41, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = load i64, i64* @FALSE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %1, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %46)
  ret void
}

declare dso_local i64 @IsBadReadPtr(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
