; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_fcp.c_avc_general_get_sig_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_fcp.c_avc_general_get_sig_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVC_GENERAL_PLUG_DIR_IN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CIP_SFC_COUNT = common dso_local global i32 0, align 4
@amdtp_rate_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_general_get_sig_fmt(%struct.fw_unit* %0, i32* %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_unit*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kzalloc(i32 8, i32 %13)
  store i32* %14, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %122

20:                                               ; preds = %4
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 1, i32* %22, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 255, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32*, i32** %11, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 25, i32* %30, align 4
  br label %34

31:                                               ; preds = %20
  %32 = load i32*, i32** %11, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 24, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i16, i16* %9, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 255, %36
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32 144, i32* %41, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  store i32 255, i32* %43, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 6
  store i32 255, i32* %45, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  store i32 255, i32* %47, align 4
  %48 = load %struct.fw_unit*, %struct.fw_unit** %6, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @BIT(i32 1)
  %52 = call i32 @BIT(i32 2)
  %53 = or i32 %51, %52
  %54 = call i32 @BIT(i32 3)
  %55 = or i32 %53, %54
  %56 = call i32 @BIT(i32 4)
  %57 = or i32 %55, %56
  %58 = call i32 @fcp_avc_transaction(%struct.fw_unit* %48, i32* %49, i32 8, i32* %50, i32 8, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %34
  br label %96

62:                                               ; preds = %34
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  br label %95

68:                                               ; preds = %62
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 8
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @ENOSYS, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %12, align 4
  br label %94

76:                                               ; preds = %68
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 10
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %12, align 4
  br label %93

84:                                               ; preds = %76
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 11
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %89, %84
  br label %93

93:                                               ; preds = %92, %81
  br label %94

94:                                               ; preds = %93, %73
  br label %95

95:                                               ; preds = %94, %65
  br label %96

96:                                               ; preds = %95, %61
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %118

100:                                              ; preds = %96
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = and i32 7, %103
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @CIP_SFC_COUNT, align 4
  %107 = icmp uge i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %12, align 4
  br label %118

111:                                              ; preds = %100
  %112 = load i32*, i32** @amdtp_rate_table, align 8
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %7, align 8
  store i32 %116, i32* %117, align 4
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %111, %108, %99
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @kfree(i32* %119)
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %118, %17
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @fcp_avc_transaction(%struct.fw_unit*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
