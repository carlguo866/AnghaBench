; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_wire.c_inet_dquad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_wire.c_inet_dquad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%ld.%ld.%ld.%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @inet_dquad(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ntohl(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 24
  %13 = and i32 %12, 255
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 0
  %22 = and i32 %21, 255
  %23 = call i32 @xsnprintf(i8* %9, i64 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load i8*, i8** %4, align 8
  ret i8* %24
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @xsnprintf(i8*, i64, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
