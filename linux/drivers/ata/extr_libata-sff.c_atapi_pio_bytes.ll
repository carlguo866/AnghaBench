; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_atapi_pio_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_atapi_pio_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.ata_device*, %struct.ata_port* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ata_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.ata_port = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ata_port*, %struct.TYPE_8__*)* }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATAPI_COD = common dso_local global i32 0, align 4
@ATAPI_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ata%u: xfering %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ATAPI check failed (ireason=0x%x bytes=%u)\00", align 1
@AC_ERR_HSM = common dso_local global i32 0, align 4
@HSM_ST_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @atapi_pio_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_pio_bytes(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ata_eh_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %12 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %12, i32 0, i32 4
  %14 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  store %struct.ata_port* %14, %struct.ata_port** %3, align 8
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 3
  %17 = load %struct.ata_device*, %struct.ata_device** %16, align 8
  store %struct.ata_device* %17, %struct.ata_device** %4, align 8
  %18 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.ata_eh_info* %21, %struct.ata_eh_info** %5, align 8
  %22 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  store i32 %30, i32* %11, align 4
  %31 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ata_port*, %struct.TYPE_8__*)*, i32 (%struct.ata_port*, %struct.TYPE_8__*)** %34, align 8
  %36 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %37 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %38 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %37, i32 0, i32 1
  %39 = call i32 %35(%struct.ata_port* %36, %struct.TYPE_8__* %38)
  %40 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %41 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %45 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %49 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 8
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ATAPI_COD, align 4
  %58 = and i32 %56, %57
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %1
  br label %99

62:                                               ; preds = %1
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @ATAPI_IO, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %99

76:                                               ; preds = %62
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %99

84:                                               ; preds = %76
  %85 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %86 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @VPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @__atapi_pio_bytes(%struct.ata_queued_cmd* %90, i32 %91)
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %104

96:                                               ; preds = %84
  %97 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %98 = call i32 @ata_sff_sync(%struct.ata_port* %97)
  br label %113

99:                                               ; preds = %83, %75, %61
  %100 = load %struct.ata_eh_info*, %struct.ata_eh_info** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i32, i32* @AC_ERR_HSM, align 4
  %106 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %107 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* @HSM_ST_ERR, align 4
  %111 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %112 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %104, %96
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @VPRINTK(i8*, i32, i32) #1

declare dso_local i32 @__atapi_pio_bytes(%struct.ata_queued_cmd*, i32) #1

declare dso_local i32 @ata_sff_sync(%struct.ata_port*) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
