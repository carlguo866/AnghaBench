; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_ws_close.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_ws_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }

@WEBSOCKET_OP_CLOSE = common dso_local global i32 0, align 4
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i8*, i64)* @mg_ws_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_ws_close(%struct.mg_connection* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %10, %3
  %14 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %15 = load i32, i32* @WEBSOCKET_OP_CLOSE, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %14, i32 %15, i8* %16, i64 %17)
  %19 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %20 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %21 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mg_send_websocket_frame(%struct.mg_connection*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
