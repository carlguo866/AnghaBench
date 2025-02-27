; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_gif.c_in_gif_setopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_gif.c_in_gif_setopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gif_softc = type { i64, i32 }

@AF_INET = common dso_local global i64 0, align 8
@GIF_IGNORE_SOURCE = common dso_local global i32 0, align 4
@srchash = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_gif_setopts(%struct.gif_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.gif_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.gif_softc* %0, %struct.gif_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gif_softc*, %struct.gif_softc** %3, align 8
  %6 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AF_INET, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @MPASS(i32 %10)
  %12 = load %struct.gif_softc*, %struct.gif_softc** %3, align 8
  %13 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @MPASS(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @GIF_IGNORE_SOURCE, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.gif_softc*, %struct.gif_softc** %3, align 8
  %23 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GIF_IGNORE_SOURCE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %21, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.gif_softc*, %struct.gif_softc** %3, align 8
  %30 = load i32, i32* @srchash, align 4
  %31 = call i32 @CK_LIST_REMOVE(%struct.gif_softc* %29, i32 %30)
  %32 = load %struct.gif_softc*, %struct.gif_softc** %3, align 8
  %33 = load i32, i32* @chain, align 4
  %34 = call i32 @CK_LIST_REMOVE(%struct.gif_softc* %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.gif_softc*, %struct.gif_softc** %3, align 8
  %37 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.gif_softc*, %struct.gif_softc** %3, align 8
  %39 = call i32 @in_gif_attach(%struct.gif_softc* %38)
  br label %40

40:                                               ; preds = %28, %2
  ret i32 0
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.gif_softc*, i32) #1

declare dso_local i32 @in_gif_attach(%struct.gif_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
