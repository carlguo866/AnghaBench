; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/shsec/extr_g_shsec.c_g_shsec_xor1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/shsec/extr_g_shsec.c_g_shsec_xor1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"len != 0 (len=%zd)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @g_shsec_xor1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_shsec_xor1(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %7

7:                                                ; preds = %18, %3
  %8 = load i64, i64* %6, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %4, align 8
  %15 = load i32, i32* %13, align 4
  %16 = xor i32 %12, %15
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %10
  %19 = load i64, i64* %6, align 8
  %20 = sub i64 %19, 4
  store i64 %20, i64* %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  br label %7

23:                                               ; preds = %7
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %6, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %26, i8* %28)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
