; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_add_fc4_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_add_fc4_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@FC_NS_BPW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, i32)* @fc_lport_add_fc4_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_add_fc4_type(%struct.fc_lport* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %7 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @FC_NS_BPW, align 4
  %12 = udiv i32 %10, %11
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ntohl(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FC_NS_BPW, align 4
  %20 = urem i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = shl i64 1, %21
  %23 = or i64 %17, %22
  %24 = call i32 @htonl(i64 %23)
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  ret void
}

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
