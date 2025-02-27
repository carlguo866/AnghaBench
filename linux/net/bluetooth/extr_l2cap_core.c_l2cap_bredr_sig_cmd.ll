; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_bredr_sig_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_bredr_sig_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Unknown BR/EDR signaling command 0x%2.2x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_bredr_sig_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_bredr_sig_cmd(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.l2cap_cmd_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %5, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %11 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %106 [
    i32 144, label %13
    i32 141, label %19
    i32 140, label %25
    i32 138, label %25
    i32 143, label %31
    i32 142, label %37
    i32 137, label %43
    i32 136, label %49
    i32 135, label %55
    i32 134, label %63
    i32 133, label %64
    i32 132, label %70
    i32 139, label %76
    i32 129, label %82
    i32 128, label %88
    i32 131, label %94
    i32 130, label %100
  ]

13:                                               ; preds = %4
  %14 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %15 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @l2cap_command_rej(%struct.l2cap_conn* %14, %struct.l2cap_cmd_hdr* %15, i32 %16, i32* %17)
  br label %113

19:                                               ; preds = %4
  %20 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %21 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @l2cap_connect_req(%struct.l2cap_conn* %20, %struct.l2cap_cmd_hdr* %21, i32 %22, i32* %23)
  store i32 %24, i32* %9, align 4
  br label %113

25:                                               ; preds = %4, %4
  %26 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %27 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @l2cap_connect_create_rsp(%struct.l2cap_conn* %26, %struct.l2cap_cmd_hdr* %27, i32 %28, i32* %29)
  br label %113

31:                                               ; preds = %4
  %32 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %33 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @l2cap_config_req(%struct.l2cap_conn* %32, %struct.l2cap_cmd_hdr* %33, i32 %34, i32* %35)
  store i32 %36, i32* %9, align 4
  br label %113

37:                                               ; preds = %4
  %38 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %39 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @l2cap_config_rsp(%struct.l2cap_conn* %38, %struct.l2cap_cmd_hdr* %39, i32 %40, i32* %41)
  br label %113

43:                                               ; preds = %4
  %44 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %45 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @l2cap_disconnect_req(%struct.l2cap_conn* %44, %struct.l2cap_cmd_hdr* %45, i32 %46, i32* %47)
  store i32 %48, i32* %9, align 4
  br label %113

49:                                               ; preds = %4
  %50 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %51 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @l2cap_disconnect_rsp(%struct.l2cap_conn* %50, %struct.l2cap_cmd_hdr* %51, i32 %52, i32* %53)
  br label %113

55:                                               ; preds = %4
  %56 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %57 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %58 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %56, i32 %59, i32 134, i32 %60, i32* %61)
  br label %113

63:                                               ; preds = %4
  br label %113

64:                                               ; preds = %4
  %65 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %66 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @l2cap_information_req(%struct.l2cap_conn* %65, %struct.l2cap_cmd_hdr* %66, i32 %67, i32* %68)
  store i32 %69, i32* %9, align 4
  br label %113

70:                                               ; preds = %4
  %71 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %72 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @l2cap_information_rsp(%struct.l2cap_conn* %71, %struct.l2cap_cmd_hdr* %72, i32 %73, i32* %74)
  br label %113

76:                                               ; preds = %4
  %77 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %78 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @l2cap_create_channel_req(%struct.l2cap_conn* %77, %struct.l2cap_cmd_hdr* %78, i32 %79, i32* %80)
  store i32 %81, i32* %9, align 4
  br label %113

82:                                               ; preds = %4
  %83 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %84 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @l2cap_move_channel_req(%struct.l2cap_conn* %83, %struct.l2cap_cmd_hdr* %84, i32 %85, i32* %86)
  store i32 %87, i32* %9, align 4
  br label %113

88:                                               ; preds = %4
  %89 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %90 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @l2cap_move_channel_rsp(%struct.l2cap_conn* %89, %struct.l2cap_cmd_hdr* %90, i32 %91, i32* %92)
  br label %113

94:                                               ; preds = %4
  %95 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %96 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @l2cap_move_channel_confirm(%struct.l2cap_conn* %95, %struct.l2cap_cmd_hdr* %96, i32 %97, i32* %98)
  store i32 %99, i32* %9, align 4
  br label %113

100:                                              ; preds = %4
  %101 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %102 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @l2cap_move_channel_confirm_rsp(%struct.l2cap_conn* %101, %struct.l2cap_cmd_hdr* %102, i32 %103, i32* %104)
  br label %113

106:                                              ; preds = %4
  %107 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %108 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %106, %100, %94, %88, %82, %76, %70, %64, %63, %55, %49, %43, %37, %31, %25, %19, %13
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32 @l2cap_command_rej(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_connect_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_connect_create_rsp(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_config_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_config_rsp(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_disconnect_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_disconnect_rsp(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, i32*) #1

declare dso_local i32 @l2cap_information_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_information_rsp(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_create_channel_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_move_channel_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_move_channel_rsp(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_move_channel_confirm(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_move_channel_confirm_rsp(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
