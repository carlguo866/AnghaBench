; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_rol_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_rol_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_OF = common dso_local global i32 0, align 4
@F_CF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @rol_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rol_byte(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = srem i32 %11, 8
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sub i32 8, %22
  %24 = ashr i32 %21, %23
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %40

31:                                               ; preds = %14
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 1
  %34 = load i32, i32* %7, align 4
  %35 = lshr i32 %34, 6
  %36 = and i32 %35, 2
  %37 = add i32 %33, %36
  %38 = call i64 @XOR2(i32 %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %31, %14
  %41 = phi i1 [ false, %14 ], [ %39, %31 ]
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @F_OF, align 4
  %44 = call i32 @CONDITIONAL_SET_FLAG(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %3
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 1
  %51 = load i32, i32* @F_CF, align 4
  %52 = call i32 @CONDITIONAL_SET_FLAG(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i64 @XOR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
