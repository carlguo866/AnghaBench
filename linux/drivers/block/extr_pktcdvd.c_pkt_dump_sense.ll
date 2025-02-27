; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_dump_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_dump_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32 }
%struct.packet_command = type { i32, %struct.scsi_sense_hdr* }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"%*ph - sense %02x.%02x.%02x (%s)\0A\00", align 1
@CDROM_PACKET_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%*ph - no sense\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*, %struct.packet_command*)* @pkt_dump_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_dump_sense(%struct.pktcdvd_device* %0, %struct.packet_command* %1) #0 {
  %3 = alloca %struct.pktcdvd_device*, align 8
  %4 = alloca %struct.packet_command*, align 8
  %5 = alloca %struct.scsi_sense_hdr*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %3, align 8
  store %struct.packet_command* %1, %struct.packet_command** %4, align 8
  %6 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %7 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  %8 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  store %struct.scsi_sense_hdr* %8, %struct.scsi_sense_hdr** %5, align 8
  %9 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %10 = icmp ne %struct.scsi_sense_hdr* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %13 = load i32, i32* @CDROM_PACKET_SIZE, align 4
  %14 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %15 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sense_key_string(i32 %28)
  %30 = call i32 (%struct.pktcdvd_device*, i8*, i32, i32, ...) @pkt_err(%struct.pktcdvd_device* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22, i32 %25, i32 %29)
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %33 = load i32, i32* @CDROM_PACKET_SIZE, align 4
  %34 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.pktcdvd_device*, i8*, i32, i32, ...) @pkt_err(%struct.pktcdvd_device* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @pkt_err(%struct.pktcdvd_device*, i8*, i32, i32, ...) #1

declare dso_local i32 @sense_key_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
