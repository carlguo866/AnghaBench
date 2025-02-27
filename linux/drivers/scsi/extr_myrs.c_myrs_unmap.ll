; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { i32, i32, i32*, i32, %struct.TYPE_2__*, i32*, i32, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrs_hba*)* @myrs_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrs_unmap(%struct.myrs_hba* %0) #0 {
  %2 = alloca %struct.myrs_hba*, align 8
  store %struct.myrs_hba* %0, %struct.myrs_hba** %2, align 8
  %3 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %4 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %3, i32 0, i32 10
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @kfree(i32 %5)
  %7 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %8 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kfree(i32 %9)
  %11 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %12 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %11, i32 0, i32 7
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %17 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %21 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %24 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dma_free_coherent(i32* %19, i32 4, i32* %22, i32 %25)
  %27 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %28 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %27, i32 0, i32 7
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %15, %1
  %30 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %31 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %36 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %40 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %43 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %46 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dma_free_coherent(i32* %38, i32 %41, i32* %44, i32 %47)
  %49 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %50 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %49, i32 0, i32 5
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %34, %29
  %52 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %53 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %58 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %62 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %65 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %68 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dma_free_coherent(i32* %60, i32 %63, i32* %66, i32 %69)
  %71 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %72 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
