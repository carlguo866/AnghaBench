; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_get_chnl_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_get_chnl_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"rtl8821ae: 5G, Channel %d in Group not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @_rtl8821ae_get_chnl_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_get_chnl_group(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sle i32 %4, 14
  br i1 %5, label %6, label %39

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 1, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = icmp sle i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %38

13:                                               ; preds = %9, %6
  %14 = load i32, i32* %2, align 4
  %15 = icmp sle i32 3, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = icmp sle i32 %17, 5
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %37

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %2, align 4
  %22 = icmp sle i32 6, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp sle i32 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 2, i32* %3, align 4
  br label %36

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %2, align 4
  %29 = icmp sle i32 9, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = icmp sle i32 %31, 11
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 3, i32* %3, align 4
  br label %35

34:                                               ; preds = %30, %27
  store i32 4, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %35, %26
  br label %37

37:                                               ; preds = %36, %19
  br label %38

38:                                               ; preds = %37, %12
  br label %154

39:                                               ; preds = %1
  %40 = load i32, i32* %2, align 4
  %41 = icmp sle i32 36, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %2, align 4
  %44 = icmp sle i32 %43, 42
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %153

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %2, align 4
  %48 = icmp sle i32 44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %2, align 4
  %51 = icmp sle i32 %50, 48
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %152

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %2, align 4
  %55 = icmp sle i32 50, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %2, align 4
  %58 = icmp sle i32 %57, 58
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 2, i32* %3, align 4
  br label %151

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %2, align 4
  %62 = icmp sle i32 60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %2, align 4
  %65 = icmp sle i32 %64, 64
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 3, i32* %3, align 4
  br label %150

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %2, align 4
  %69 = icmp sle i32 100, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %2, align 4
  %72 = icmp sle i32 %71, 106
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 4, i32* %3, align 4
  br label %149

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %2, align 4
  %76 = icmp sle i32 108, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %2, align 4
  %79 = icmp sle i32 %78, 114
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 5, i32* %3, align 4
  br label %148

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %2, align 4
  %83 = icmp sle i32 116, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %2, align 4
  %86 = icmp sle i32 %85, 122
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 6, i32* %3, align 4
  br label %147

88:                                               ; preds = %84, %81
  %89 = load i32, i32* %2, align 4
  %90 = icmp sle i32 124, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %2, align 4
  %93 = icmp sle i32 %92, 130
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 7, i32* %3, align 4
  br label %146

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %2, align 4
  %97 = icmp sle i32 132, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %2, align 4
  %100 = icmp sle i32 %99, 138
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 8, i32* %3, align 4
  br label %145

102:                                              ; preds = %98, %95
  %103 = load i32, i32* %2, align 4
  %104 = icmp sle i32 140, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* %2, align 4
  %107 = icmp sle i32 %106, 144
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 9, i32* %3, align 4
  br label %144

109:                                              ; preds = %105, %102
  %110 = load i32, i32* %2, align 4
  %111 = icmp sle i32 149, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %2, align 4
  %114 = icmp sle i32 %113, 155
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 10, i32* %3, align 4
  br label %143

116:                                              ; preds = %112, %109
  %117 = load i32, i32* %2, align 4
  %118 = icmp sle i32 157, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* %2, align 4
  %121 = icmp sle i32 %120, 161
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 11, i32* %3, align 4
  br label %142

123:                                              ; preds = %119, %116
  %124 = load i32, i32* %2, align 4
  %125 = icmp sle i32 165, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %2, align 4
  %128 = icmp sle i32 %127, 171
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 12, i32* %3, align 4
  br label %141

130:                                              ; preds = %126, %123
  %131 = load i32, i32* %2, align 4
  %132 = icmp sle i32 173, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32, i32* %2, align 4
  %135 = icmp sle i32 %134, 177
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 13, i32* %3, align 4
  br label %140

137:                                              ; preds = %133, %130
  %138 = load i32, i32* %2, align 4
  %139 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %137, %136
  br label %141

141:                                              ; preds = %140, %129
  br label %142

142:                                              ; preds = %141, %122
  br label %143

143:                                              ; preds = %142, %115
  br label %144

144:                                              ; preds = %143, %108
  br label %145

145:                                              ; preds = %144, %101
  br label %146

146:                                              ; preds = %145, %94
  br label %147

147:                                              ; preds = %146, %87
  br label %148

148:                                              ; preds = %147, %80
  br label %149

149:                                              ; preds = %148, %73
  br label %150

150:                                              ; preds = %149, %66
  br label %151

151:                                              ; preds = %150, %59
  br label %152

152:                                              ; preds = %151, %52
  br label %153

153:                                              ; preds = %152, %45
  br label %154

154:                                              ; preds = %153, %38
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
