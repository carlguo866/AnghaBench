; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_semb_proto_denounce_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_semb_proto_denounce_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ed = type { i32 }
%struct.sbuf = type { i32 }
%struct.sep_identify_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_ed*, %struct.sbuf*)* @semb_proto_denounce_sbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @semb_proto_denounce_sbuf(%struct.cam_ed* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.cam_ed*, align 8
  %4 = alloca %struct.sbuf*, align 8
  store %struct.cam_ed* %0, %struct.cam_ed** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %5 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %6 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %5, i32 0, i32 0
  %7 = bitcast i32* %6 to %struct.sep_identify_data*
  %8 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %9 = call i32 @semb_print_ident_short_sbuf(%struct.sep_identify_data* %7, %struct.sbuf* %8)
  ret void
}

declare dso_local i32 @semb_print_ident_short_sbuf(%struct.sep_identify_data*, %struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
