; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsSendControlPacketWithAutoSplit.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsSendControlPacketWithAutoSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENVPN_CONTROL_PACKET_MAX_DATASIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OvsSendControlPacketWithAutoSplit(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %4
  br label %55

23:                                               ; preds = %19, %16
  %24 = call i32* (...) @NewBuf()
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @WriteBuf(i32* %25, i32* %26, i64 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @SeekBuf(i32* %29, i32 0, i32 0)
  br label %31

31:                                               ; preds = %23, %51
  %32 = load i32, i32* @OPENVPN_CONTROL_PACKET_MAX_DATASIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %10, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %11, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = mul nuw i64 4, %33
  %38 = trunc i64 %37 to i32
  %39 = call i64 @ReadBuf(i32* %36, i32* %35, i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 3, i32* %13, align 4
  br label %48

43:                                               ; preds = %31
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @OvsSendControlPacket(i32* %44, i32 %45, i32* %35, i64 %46)
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %43, %42
  %49 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %13, align 4
  switch i32 %50, label %56 [
    i32 0, label %51
    i32 3, label %52
  ]

51:                                               ; preds = %48
  br label %31

52:                                               ; preds = %48
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @FreeBuf(i32* %53)
  br label %55

55:                                               ; preds = %52, %22
  ret void

56:                                               ; preds = %48
  unreachable
}

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(i32*, i32*, i64) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ReadBuf(i32*, i32*, i32) #1

declare dso_local i32 @OvsSendControlPacket(i32*, i32, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
