; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_tf_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_tf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.ata_ioports }
%struct.ata_ioports = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_HOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @sata_rcar_tf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_rcar_tf_read(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.ata_ioports*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 1
  store %struct.ata_ioports* %7, %struct.ata_ioports** %5, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = call i32 @sata_rcar_check_status(%struct.ata_port* %8)
  %10 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %11 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 13
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %13 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @ioread32(i32 %14)
  %16 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %17 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %16, i32 0, i32 12
  store i8* %15, i8** %17, align 8
  %18 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %19 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @ioread32(i32 %20)
  %22 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %23 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %22, i32 0, i32 11
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %25 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @ioread32(i32 %26)
  %28 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %29 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %28, i32 0, i32 10
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %31 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @ioread32(i32 %32)
  %34 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %35 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %34, i32 0, i32 9
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %37 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @ioread32(i32 %38)
  %40 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %41 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %43 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @ioread32(i32 %44)
  %46 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %47 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %46, i32 0, i32 7
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %49 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %106

54:                                               ; preds = %2
  %55 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %56 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ATA_HOB, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %61 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @iowrite32(i32 %59, i32 %62)
  %64 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %65 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @ioread32(i32 %66)
  %68 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %69 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %71 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @ioread32(i32 %72)
  %74 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %75 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %77 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @ioread32(i32 %78)
  %80 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %81 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %83 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @ioread32(i32 %84)
  %86 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %87 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %89 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @ioread32(i32 %90)
  %92 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %93 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %95 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %98 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @iowrite32(i32 %96, i32 %99)
  %101 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %102 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %105 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %54, %2
  ret void
}

declare dso_local i32 @sata_rcar_check_status(%struct.ata_port*) #1

declare dso_local i8* @ioread32(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
