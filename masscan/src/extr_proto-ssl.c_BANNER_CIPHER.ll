; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_BANNER_CIPHER.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_BANNER_CIPHER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"cipher:0x%x\00", align 1
@PROTO_SSL3 = common dso_local global i32 0, align 4
@AUTO_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BannerOutput*, i32)* @BANNER_CIPHER to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BANNER_CIPHER(%struct.BannerOutput* %0, i32 %1) #0 {
  %3 = alloca %struct.BannerOutput*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  store %struct.BannerOutput* %0, %struct.BannerOutput** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @sprintf_s(i8* %6, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %10 = load i32, i32* @PROTO_SSL3, align 4
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %12 = load i32, i32* @AUTO_LEN, align 4
  %13 = call i32 @banout_append(%struct.BannerOutput* %9, i32 %10, i8* %11, i32 %12)
  ret void
}

declare dso_local i32 @sprintf_s(i8*, i32, i8*, i32) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
