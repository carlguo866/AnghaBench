; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd7000.c_wd7000_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd7000.c_wd7000_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__*, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"wd7000_intr: irq = %d, host = 0x%06lx\0A\00", align 1
@ASC_INTR_STAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"wd7000_intr: intr stat = 0x%02x\0A\00", align 1
@ASC_STAT = common dso_local global i64 0, align 8
@INT_IM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"wd7000_intr: phantom interrupt...\0A\00", align 1
@MB_INTR = common dso_local global i32 0, align 4
@IMB_INTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"wd7000_intr: free outgoing mailbox\0A\00", align 1
@MB_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"wd7000_intr: unsolicited interrupt 0x%02x\0A\00", align 1
@ICB_OP_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"wd7000_intr: return from interrupt handler\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wd7000_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wd7000_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.scsi_cmnd*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %5, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %15, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %16, align 8
  %29 = call i32 @spin_lock_irqsave(i32 %27, i64 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = ptrtoint %struct.TYPE_17__* %35 to i64
  %37 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %36)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ASC_INTR_STAT, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inb(i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ASC_STAT, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @inb(i64 %50)
  %52 = load i32, i32* @INT_IM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %2
  %56 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %149

57:                                               ; preds = %2
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @MB_INTR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %149

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @IMB_INTR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %149

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @MB_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %7, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 128
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  br label %149

86:                                               ; preds = %70
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = call i32 @scsi2int(i32* %93)
  %95 = call %struct.TYPE_14__* @isa_bus_to_virt(i32 %94)
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %12, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ICB_OP_MASK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %86
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %109 = bitcast %struct.TYPE_14__* %108 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %13, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  br label %149

115:                                              ; preds = %86
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %117, align 8
  store %struct.scsi_cmnd* %118, %struct.scsi_cmnd** %14, align 8
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %120 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %121, align 8
  %124 = icmp sle i64 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %115
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %9, align 4
  %130 = shl i32 %129, 8
  %131 = or i32 %128, %130
  store i32 %131, i32* %10, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @make_code(i32 %135, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %140 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %142 = call i32 @free_scb(%struct.TYPE_14__* %141)
  %143 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %144 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %143, i32 0, i32 1
  %145 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %144, align 8
  %146 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %147 = call i32 %145(%struct.scsi_cmnd* %146)
  br label %148

148:                                              ; preds = %125, %115
  br label %149

149:                                              ; preds = %148, %107, %83, %68, %62, %55
  %150 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %152 = call i32 @wd7000_intr_ack(%struct.TYPE_17__* %151)
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i64, i64* %16, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32 %157, i64 %158)
  %160 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %160
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @inb(i64) #1

declare dso_local %struct.TYPE_14__* @isa_bus_to_virt(i32) #1

declare dso_local i32 @scsi2int(i32*) #1

declare dso_local i32 @make_code(i32, i32) #1

declare dso_local i32 @free_scb(%struct.TYPE_14__*) #1

declare dso_local i32 @wd7000_intr_ack(%struct.TYPE_17__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
