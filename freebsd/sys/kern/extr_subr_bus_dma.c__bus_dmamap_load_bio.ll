; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus_dma.c__bus_dmamap_load_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus_dma.c__bus_dmamap_load_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i64, i32, i32, i32 }

@BIO_VLIST = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.bio*, i32*, i32)* @_bus_dmamap_load_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bus_dmamap_load_bio(i32 %0, i32 %1, %struct.bio* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.bio* %2, %struct.bio** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.bio*, %struct.bio** %9, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BIO_VLIST, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %5
  %20 = load %struct.bio*, %struct.bio** %9, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %12, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = load %struct.bio*, %struct.bio** %9, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @kernel_pmap, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.bio*, %struct.bio** %9, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.bio*, %struct.bio** %9, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @_bus_dmamap_load_vlist(i32 %24, i32 %25, i32* %26, i32 %29, i32 %30, i32* %31, i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %75

40:                                               ; preds = %5
  %41 = load %struct.bio*, %struct.bio** %9, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BIO_UNMAPPED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.bio*, %struct.bio** %9, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bio*, %struct.bio** %9, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bio*, %struct.bio** %9, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @_bus_dmamap_load_ma(i32 %48, i32 %49, i32 %52, i32 %55, i32 %58, i32 %59, i32* null, i32* %60)
  store i32 %61, i32* %6, align 4
  br label %75

62:                                               ; preds = %40
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.bio*, %struct.bio** %9, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.bio*, %struct.bio** %9, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @kernel_pmap, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @_bus_dmamap_load_buffer(i32 %63, i32 %64, i64 %67, i32 %70, i32 %71, i32 %72, i32* null, i32* %73)
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %62, %47, %19
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @_bus_dmamap_load_vlist(i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_bus_dmamap_load_ma(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @_bus_dmamap_load_buffer(i32, i32, i64, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
