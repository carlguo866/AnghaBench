; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_from_packet_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_from_packet_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s packet referred to nonexistent channel %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ssh*, i8*, i8*)* @channel_from_packet_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @channel_from_packet_id(%struct.ssh* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.ssh*, %struct.ssh** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @channel_parse_id(%struct.ssh* %9, i8* %10, i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ssh*, %struct.ssh** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32* @channel_lookup(%struct.ssh* %13, i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.ssh*, %struct.ssh** %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ssh_packet_disconnect(%struct.ssh* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load i32*, i32** %8, align 8
  ret i32* %23
}

declare dso_local i32 @channel_parse_id(%struct.ssh*, i8*, i8*) #1

declare dso_local i32* @channel_lookup(%struct.ssh*, i32) #1

declare dso_local i32 @ssh_packet_disconnect(%struct.ssh*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
