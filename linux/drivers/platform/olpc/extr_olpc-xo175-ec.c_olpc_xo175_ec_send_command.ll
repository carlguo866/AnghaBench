; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-xo175-ec.c_olpc_xo175_ec_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-xo175-ec.c_olpc_xo175_ec_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.olpc_xo175_ec = type { %struct.TYPE_7__*, %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.olpc_xo175_ec*, i32 }
%struct.TYPE_6__ = type { i64 }

@olpc_xo175_ec_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"spi_async() failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.olpc_xo175_ec*, i8*, i64)* @olpc_xo175_ec_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @olpc_xo175_ec_send_command(%struct.olpc_xo175_ec* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.olpc_xo175_ec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.olpc_xo175_ec* %0, %struct.olpc_xo175_ec** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %9 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %8, i32 0, i32 3
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @memcpy(i32* %9, i8* %10, i64 %11)
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %15 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %18 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %17, i32 0, i32 1
  %19 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %20 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %19, i32 0, i32 2
  %21 = call i32 @spi_message_init_with_transfers(%struct.TYPE_5__* %18, %struct.TYPE_6__* %20, i32 1)
  %22 = load i32, i32* @olpc_xo175_ec_complete, align 4
  %23 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %24 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %27 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %28 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store %struct.olpc_xo175_ec* %26, %struct.olpc_xo175_ec** %29, align 8
  %30 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %31 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %34 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %33, i32 0, i32 1
  %35 = call i32 @spi_async(%struct.TYPE_7__* %32, %struct.TYPE_5__* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %3
  %39 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %40 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %3
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @spi_message_init_with_transfers(%struct.TYPE_5__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @spi_async(%struct.TYPE_7__*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
