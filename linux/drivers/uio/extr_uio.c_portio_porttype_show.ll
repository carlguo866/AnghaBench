; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_portio_porttype_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_portio_porttype_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_port = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@__const.portio_porttype_show.porttypes = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@UIO_PORT_OTHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"port_%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio_port*, i8*)* @portio_porttype_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @portio_porttype_show(%struct.uio_port* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uio_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i8*], align 16
  store %struct.uio_port* %0, %struct.uio_port** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = bitcast [4 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i8*]* @__const.portio_porttype_show.porttypes to i8*), i64 32, i1 false)
  %8 = load %struct.uio_port*, %struct.uio_port** %4, align 8
  %9 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.uio_port*, %struct.uio_port** %4, align 8
  %14 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UIO_PORT_OTHER, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %12
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.uio_port*, %struct.uio_port** %4, align 8
  %24 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
