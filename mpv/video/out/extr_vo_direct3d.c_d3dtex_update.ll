; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_d3dtex_update.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_d3dtex_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.d3dtex = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.d3dtex*)* @d3dtex_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dtex_update(%struct.TYPE_3__* %0, %struct.d3dtex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.d3dtex*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.d3dtex* %1, %struct.d3dtex** %5, align 8
  %6 = load %struct.d3dtex*, %struct.d3dtex** %5, align 8
  %7 = getelementptr inbounds %struct.d3dtex, %struct.d3dtex* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %28

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.d3dtex*, %struct.d3dtex** %5, align 8
  %16 = getelementptr inbounds %struct.d3dtex, %struct.d3dtex* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load %struct.d3dtex*, %struct.d3dtex** %5, align 8
  %20 = getelementptr inbounds %struct.d3dtex, %struct.d3dtex* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @IDirect3DDevice9_UpdateTexture(i32 %14, i32* %18, i32* %22)
  %24 = call i32 @FAILED(i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %11, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @IDirect3DDevice9_UpdateTexture(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
