; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj_pcmcia.c_ixj_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj_pcmcia.c_ixj_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ixj_config(0x%p)\0A\00", align 1
@ixj_config_check = common dso_local global i32 0, align 4
@PHONE_MAJOR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @ixj_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixj_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %12 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %11)
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = load i32, i32* @ixj_config_check, align 4
  %15 = call i64 @pcmcia_loop_config(%struct.pcmcia_device* %13, i32 %14, %struct.TYPE_9__* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %21 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %20, i32 0, i32 2
  %22 = call i64 @pcmcia_request_configuration(%struct.pcmcia_device* %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %49

25:                                               ; preds = %18
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 16
  %35 = call i32* @ixj_pcmcia_probe(i64 %29, i64 %34)
  store i32* %35, i32** %4, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* @PHONE_MAJOR, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %45 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %44, i32 0, i32 0
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %45, align 8
  %46 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @ixj_get_serial(%struct.pcmcia_device* %46, i32* %47)
  store i32 0, i32* %2, align 4
  br label %54

49:                                               ; preds = %24, %17
  %50 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %51 = call i32 @ixj_cs_release(%struct.pcmcia_device* %50)
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %25
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DEBUG(i32, i8*, %struct.pcmcia_device*) #2

declare dso_local i64 @pcmcia_loop_config(%struct.pcmcia_device*, i32, %struct.TYPE_9__*) #2

declare dso_local i64 @pcmcia_request_configuration(%struct.pcmcia_device*, i32*) #2

declare dso_local i32* @ixj_pcmcia_probe(i64, i64) #2

declare dso_local i32 @ixj_get_serial(%struct.pcmcia_device*, i32*) #2

declare dso_local i32 @ixj_cs_release(%struct.pcmcia_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
