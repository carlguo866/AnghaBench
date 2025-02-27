; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/encoder/cbor/extr_enc_cbor.c_cbor_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/encoder/cbor/extr_enc_cbor.c_cbor_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@CBOR_MAP = common dso_local global i32 0, align 4
@CBOR_INDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @cbor_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbor_create(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.TYPE_6__* @xo_realloc(i32* null, i32 4)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = icmp eq %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i32 @bzero(%struct.TYPE_6__* %10, i32 4)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call i32 @xo_buf_init(i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = call i32 @xo_set_private(i32* %15, %struct.TYPE_6__* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* @CBOR_MAP, align 4
  %23 = load i32, i32* @CBOR_INDEF, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @cbor_append(i32* %18, %struct.TYPE_6__* %19, i32* %21, i32 %24, i32 0, i32* null)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %9, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.TYPE_6__* @xo_realloc(i32*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @xo_buf_init(i32*) #1

declare dso_local i32 @xo_set_private(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @cbor_append(i32*, %struct.TYPE_6__*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
