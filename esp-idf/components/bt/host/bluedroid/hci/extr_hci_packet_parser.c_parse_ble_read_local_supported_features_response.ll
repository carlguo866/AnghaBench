; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_packet_parser.c_parse_ble_read_local_supported_features_response.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_packet_parser.c_parse_ble_read_local_supported_features_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@HCI_BLE_READ_LOCAL_SPT_FEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @parse_ble_read_local_supported_features_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_ble_read_local_supported_features_response(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @HCI_BLE_READ_LOCAL_SPT_FEAT, align 4
  %8 = call i32* @read_command_complete_header(i32* %6, i32 %7, i32 4)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @STREAM_TO_ARRAY(i32 %15, i32* %16, i32 4)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @osi_free(i32* %18)
  ret void
}

declare dso_local i32* @read_command_complete_header(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STREAM_TO_ARRAY(i32, i32*, i32) #1

declare dso_local i32 @osi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
