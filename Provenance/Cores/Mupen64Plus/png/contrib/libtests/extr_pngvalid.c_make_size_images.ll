; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_make_size_images.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_make_size_images.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"make size images\00", align 1
@WRITE_BDHI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @make_size_images to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_size_images(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @safecat(i32 %5, i32 4, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = load i32, i32* @WRITE_BDHI, align 4
  %9 = call i32 @make_size(%struct.TYPE_4__* %7, i32 0, i32 0, i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = load i32, i32* @WRITE_BDHI, align 4
  %12 = call i32 @make_size(%struct.TYPE_4__* %10, i32 2, i32 3, i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = call i32 @make_size(%struct.TYPE_4__* %13, i32 3, i32 0, i32 3)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = load i32, i32* @WRITE_BDHI, align 4
  %17 = call i32 @make_size(%struct.TYPE_4__* %15, i32 4, i32 3, i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = load i32, i32* @WRITE_BDHI, align 4
  %20 = call i32 @make_size(%struct.TYPE_4__* %18, i32 6, i32 3, i32 %19)
  ret void
}

declare dso_local i32 @safecat(i32, i32, i32, i8*) #1

declare dso_local i32 @make_size(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
