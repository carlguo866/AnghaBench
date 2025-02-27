; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_ports.c_subscribe_port.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_ports.c_subscribe_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i64 }
%struct.snd_seq_client_port = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_seq_port_subs_info = type { i32, i32 (i32, %struct.snd_seq_port_subscribe*)* }
%struct.snd_seq_port_subscribe = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@USER_CLIENT = common dso_local global i64 0, align 8
@SNDRV_SEQ_EVENT_PORT_SUBSCRIBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_client*, %struct.snd_seq_client_port*, %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subscribe*, i32)* @subscribe_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subscribe_port(%struct.snd_seq_client* %0, %struct.snd_seq_client_port* %1, %struct.snd_seq_port_subs_info* %2, %struct.snd_seq_port_subscribe* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_client*, align 8
  %8 = alloca %struct.snd_seq_client_port*, align 8
  %9 = alloca %struct.snd_seq_port_subs_info*, align 8
  %10 = alloca %struct.snd_seq_port_subscribe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_seq_client* %0, %struct.snd_seq_client** %7, align 8
  store %struct.snd_seq_client_port* %1, %struct.snd_seq_client_port** %8, align 8
  store %struct.snd_seq_port_subs_info* %2, %struct.snd_seq_port_subs_info** %9, align 8
  store %struct.snd_seq_port_subscribe* %3, %struct.snd_seq_port_subscribe** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %14 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @try_module_get(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %82

21:                                               ; preds = %5
  %22 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %23 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %27 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %26, i32 0, i32 1
  %28 = load i32 (i32, %struct.snd_seq_port_subscribe*)*, i32 (i32, %struct.snd_seq_port_subscribe*)** %27, align 8
  %29 = icmp ne i32 (i32, %struct.snd_seq_port_subscribe*)* %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %21
  %31 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %32 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %37 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %36, i32 0, i32 1
  %38 = load i32 (i32, %struct.snd_seq_port_subscribe*)*, i32 (i32, %struct.snd_seq_port_subscribe*)** %37, align 8
  %39 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %40 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %10, align 8
  %43 = call i32 %38(i32 %41, %struct.snd_seq_port_subscribe* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %35
  %47 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %48 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @module_put(i32 %49)
  %51 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %52 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %46, %35
  br label %56

56:                                               ; preds = %55, %30, %21
  %57 = load i32, i32* %12, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %64 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @USER_CLIENT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %70 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %74 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %10, align 8
  %78 = load i32, i32* @SNDRV_SEQ_EVENT_PORT_SUBSCRIBED, align 4
  %79 = call i32 @snd_seq_client_notify_subscription(i32 %72, i32 %76, %struct.snd_seq_port_subscribe* %77, i32 %78)
  br label %80

80:                                               ; preds = %68, %62, %59, %56
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %18
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @snd_seq_client_notify_subscription(i32, i32, %struct.snd_seq_port_subscribe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
