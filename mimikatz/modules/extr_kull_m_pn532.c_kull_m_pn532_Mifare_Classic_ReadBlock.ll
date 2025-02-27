; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pn532.c_kull_m_pn532_Mifare_Classic_ReadBlock.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pn532.c_kull_m_pn532_Mifare_Classic_ReadBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@MIFARE_CLASSIC_CMD_READ = common dso_local global i32 0, align 4
@MIFARE_CLASSIC_BLOCK_SIZE = common dso_local global i32 0, align 4
@PN532_CMD_InDataExchange = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_pn532_Mifare_Classic_ReadBlock(i32 %0, %struct.TYPE_9__* %1, i32 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %21 = load i32, i32* @MIFARE_CLASSIC_CMD_READ, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @MIFARE_CLASSIC_BLOCK_SIZE, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %28 = mul nuw i64 4, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %13, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = call i32 @RtlZeroMemory(%struct.TYPE_11__* %30, i32 4)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PN532_CMD_InDataExchange, align 4
  %34 = ptrtoint %struct.TYPE_10__* %10 to i32
  %35 = call i64 @kull_m_pn532_sendrecv(i32 %32, i32 %33, i32 %34, i32 3, i32* %27, i32* %13)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %4
  %38 = getelementptr inbounds i32, i32* %27, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %9, align 4
  br i1 %41, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds i32, i32* %27, i64 1
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @RtlCopyMemory(i32 %46, i32* %47, i32 %49)
  br label %51

51:                                               ; preds = %43, %37
  br label %52

52:                                               ; preds = %51, %4
  %53 = load i32, i32* %9, align 4
  %54 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %54)
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_11__*, i32) #2

declare dso_local i64 @kull_m_pn532_sendrecv(i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @RtlCopyMemory(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
