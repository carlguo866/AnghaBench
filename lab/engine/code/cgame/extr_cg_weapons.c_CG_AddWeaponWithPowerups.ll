; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_AddWeaponWithPowerups.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_AddWeaponWithPowerups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@PW_INVIS = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@PW_BATTLESUIT = common dso_local global i32 0, align 4
@PW_QUAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @CG_AddWeaponWithPowerups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_AddWeaponWithPowerups(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PW_INVIS, align 4
  %7 = shl i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0, i32 2), align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_7__* %14)
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_7__* %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PW_BATTLESUIT, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0, i32 1), align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_7__* %28)
  br label %30

30:                                               ; preds = %24, %16
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PW_QUAD, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0, i32 0), align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_7__* %40)
  br label %42

42:                                               ; preds = %36, %30
  br label %43

43:                                               ; preds = %42, %10
  ret void
}

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
