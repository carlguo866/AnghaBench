; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_setRGB.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_setRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32 }

@__const.setRGB.all_gain_reg = private unnamed_addr constant [6 x i32] [i32 135, i32 0, i32 136, i32 0, i32 137, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setRGB(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [6 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([6 x i32]* @__const.setRGB.all_gain_reg to i8*), i64 24, i1 false)
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  store i32 %14, i32* %15, align 4
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 5
  store i32 %18, i32* %19, align 4
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %22 = call i32 @reg_w_buf(%struct.gspca_dev* %20, i32* %21, i32 24)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
