; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_ph_draw_start.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_ph_draw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@gui_ph_raw_offset = common dso_local global i32 0, align 4
@Pg_RELATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gui_ph_draw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gui_ph_draw_start() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* (...) @PgGetGC()
  store i32* %2, i32** %1, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %4 = call i32 @PtFindDisjoint(i32 %3)
  %5 = call i32 @PtWidgetRid(i32 %4)
  %6 = call i32 @PgSetRegion(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @PgClearClippingsCx(i32* %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @PgClearTranslationCx(i32* %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %12 = call i32 @PtWidgetOffset(i32 %11, i32* @gui_ph_raw_offset)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %14 = call i32 @PtWidgetPos(i32 %13, i32* null)
  %15 = call i32 @PhTranslatePoint(i32* @gui_ph_raw_offset, i32 %14)
  %16 = load i32, i32* @Pg_RELATIVE, align 4
  %17 = call i32 @PgSetTranslation(i32* @gui_ph_raw_offset, i32 %16)
  ret void
}

declare dso_local i32* @PgGetGC(...) #1

declare dso_local i32 @PgSetRegion(i32) #1

declare dso_local i32 @PtWidgetRid(i32) #1

declare dso_local i32 @PtFindDisjoint(i32) #1

declare dso_local i32 @PgClearClippingsCx(i32*) #1

declare dso_local i32 @PgClearTranslationCx(i32*) #1

declare dso_local i32 @PtWidgetOffset(i32, i32*) #1

declare dso_local i32 @PhTranslatePoint(i32*, i32) #1

declare dso_local i32 @PtWidgetPos(i32, i32*) #1

declare dso_local i32 @PgSetTranslation(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
